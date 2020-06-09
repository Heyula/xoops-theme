<div id="demo">
		<div class="job-box">
		<div class="job-box-filter">
			<h5><i class="fab fa-github"></i> Latest XOOPS Commits on GitHub</h5>
		</div>
			<div class="inbox-message">
				<ul>
					<li v-for="record in commits">
						<div class="message-body1">
							<div class="message-body-heading1">
								<h5><a><i class="fas fa-angle-right"></i></a> <a :href="record.html_url" target="_blank" class="commit">{{ record.sha.slice(0, 7) }} - <span class="message">{{ record.commit.message | truncate }}</span></a></h5>
							</div>
							<div class="olc"><i class="fas fa-user"></i> <a :href="record.author.html_url" target="_blank">{{ record.commit.author.name }}</a>  <i class="fas fa-folder-open"></i> {{ record.commit.author.date | formatDate }}</div>
						</div>
					</li>
				</ul>
			</div>
	
</div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.2.4/vue.min.js"></script>

<script>
var apiURL = 'https://api.github.com/repos/XOOPS/XoopsCore25/commits?per_page=3&sha='

/**
 * Actual demo
 */

var demo = new Vue({

  el: '#demo',

  data: {
    branches: ['master'],
    currentBranch: 'master',
    commits: null
  },

  created: function () {
    this.fetchData()
  },

  watch: {
    currentBranch: 'fetchData'
  },

  filters: {
    truncate: function (v) {
      var newline = v.indexOf('n')
      return newline > 0 ? v.slice(0, newline) : v
    },
    formatDate: function (v) {
      return v.replace(/T|Z/g, ' ')
    }
  },

  methods: {
    fetchData: function () {
      var xhr = new XMLHttpRequest()
      var self = this
      xhr.open('GET', apiURL + self.currentBranch)
      xhr.onload = function () {
        self.commits = JSON.parse(xhr.responseText)
        console.log(self.commits[0].html_url)
      }
      xhr.send()
    }
  }
})
</script>